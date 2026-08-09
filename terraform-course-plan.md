# Terraform Başlanğıc Kursu

**Müddət:** 4 həftə · həftədə 2 dərs · hər dərs ~2 saat
**Dil:** Azərbaycan dilində (kod və terminlər ingiliscə)
**Praktika mühiti:** Docker, LocalStack, on-prem VMware ESXi — **real cloud xərci yoxdur**

---

## İlkin tələblər

Kursa başlamazdan əvvəl iştirakçılarda olmalıdır:

- Terminal/CLI əsasları (`cd`, `ls`, fayl redaktəsi)
- Docker quraşdırılmış və işlək (`docker run hello-world` uğurla keçir)
- Git əsasları (`clone`, `commit`, `push`)
- Mətn redaktoru — VS Code tövsiyə olunur
- **Yalnız Dərs 7 üçün:** test məqsədli ESXi host və ya vCenter erişimi (IP, istifadəçi adı, parol). Yoxdursa, bu dərs demo/müəllim ekranı üzərindən keçirilə bilər.

---

## Mühit hazırlığı təlimatı

Kursdan əvvəl hər iştirakçı bunları quraşdırmalıdır:

### 1. Terraform

```bash
# macOS
brew tap hashicorp/tap
brew install hashicorp/tap/terraform

# Linux (Ubuntu/Debian)
wget -O - https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform

# Yoxlama
terraform version
```

### 2. VS Code extension

`HashiCorp Terraform` extension-u quraşdırın (sintaksis rəngləmə, autocomplete, format-on-save).

### 3. LocalStack (Həftə 2-dən lazımdır)

```yaml
# docker-compose.yml
services:
  localstack:
    image: localstack/localstack:latest
    ports:
      - "4566:4566"
    environment:
      - SERVICES=s3,iam,sqs,ec2
    volumes:
      - "/var/run/docker.sock:/var/run/docker.sock"
```

```bash
docker compose up -d
curl http://localhost:4566/_localstack/health   # servislərin işlədiyini yoxla
```

### 4. AWS CLI (fake credentials ilə)

```bash
# macOS: brew install awscli
aws configure
# AWS Access Key ID: test
# AWS Secret Access Key: test
# Default region: eu-north-1
# Output format: json
```

> LocalStack real credentials tələb etmir — `test`/`test` kifayətdir.

---

# HƏFTƏ 1 — Əsaslar və ilk resurs (Docker provider)

## Dərs 1: IaC anlayışı və Terraform-a giriş

### Məqsədlər
- Infrastructure as Code (IaC) anlayışını və üstünlüklərini izah etmək
- Terraform-un digər alətlərdən (Ansible, CloudFormation) fərqini bilmək
- Terraform-u quraşdırıb ilk əmrləri icra etmək
- `init → plan → apply → destroy` iş dövrünü anlamaq

### Nəzəri mövzular
1. **IaC nədir?** Manual infrastruktur idarəsinin problemləri: təkrarlanmazlıq, insan xətası, sənədləşmə çatışmazlığı, "snowflake server" problemi.
2. **Declarative vs Imperative:** Terraform *nə istədiyini* yazırsan (declarative), *necə edəcəyini* yox.
3. **Terraform vs alternativlər:**
   - **Ansible** — konfiqurasiya idarəsi (server *içini* qurur), Terraform — infrastruktur provisioning (serveri *özünü* yaradır). Birlikdə işlədilir.
   - **CloudFormation/Bicep** — vendor-lock, yalnız bir cloud. Terraform — multi-provider.
4. **Terraform arxitekturası:** Core + Provider plugins. Provider = API tərcüməçisi (AWS, Docker, vSphere, GitLab, hətta Domino's Pizza 🍕).
5. **Əsas iş dövrü:**
   - `terraform init` — provider-ləri endirir, backend hazırlayır
   - `terraform plan` — nə dəyişəcəyini göstərir (dry-run)
   - `terraform apply` — dəyişiklikləri tətbiq edir
   - `terraform destroy` — hər şeyi silir

### Praktika (30 dəq)
1. Terraform quraşdırılmasını yoxla: `terraform version`
2. Boş qovluqda `main.tf` yarat, içi boş olsa belə `terraform init` işlət, çıxışı oxu
3. `terraform -help` ilə əmrlər siyahısına bax

### Ev tapşırığı
- [Terraform intro](https://developer.hashicorp.com/terraform/intro) səhifəsini oxu
- Öz sözlərinlə 5 cümlə ilə yaz: "IaC bizim komandaya nə verər?"

### Resurslar
- https://developer.hashicorp.com/terraform/intro
- https://developer.hashicorp.com/terraform/install

---

## Dərs 2: HCL sintaksisi və Docker ilə ilk resurs

### Məqsədlər
- HCL (HashiCorp Configuration Language) blok sintaksisini yazmaq
- Provider konfiqurasiya etmək
- Docker provider ilə real konteyner yaratmaq
- State faylının nə olduğunu görmək

### Nəzəri mövzular
1. **HCL sintaksisi:**
   ```hcl
   block_type "label_1" "label_2" {
     argument = "value"
     nested_block {
       key = "value"
     }
   }
   ```
2. **`terraform` bloku və `required_providers`** — provider versiyalarının kilidlənməsi
3. **Resource ünvanlanması:** `docker_container.nginx` — tip + ad
4. **Resurslar arası istinad:** `docker_image.nginx.image_id`

### Praktika (60 dəq): Docker ilə nginx

```hcl
# main.tf
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name         = "nginx:1.27"
  keep_locally = false
}

resource "docker_container" "web" {
  name  = "hello-terraform"
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = 8080
  }
}
```

Addımlar:
1. `terraform init` — Docker provider endirilir
2. `terraform plan` — çıxışı sətir-sətir oxu: `+` yaradılacaq deməkdir
3. `terraform apply` — `yes` yaz, brauzerdə `http://localhost:8080` aç
4. `docker ps` — konteynerin Terraform tərəfindən yaradıldığını gör
5. `terraform.tfstate` faylını aç, JSON strukturuna bax — **amma əl ilə heç vaxt redaktə etmə!**
6. `main.tf`-də `external = 8081` et, yenidən `plan` — `~` (dəyişiklik) işarəsini gör
7. `terraform destroy` — hər şeyi təmizlə

### Ev tapşırığı
- Eyni konfiqurasiyaya ikinci konteyner əlavə et (məsələn `redis:7`), apply et, destroy et
- `.terraform.lock.hcl` faylının nə üçün olduğunu araşdır

### Resurslar
- https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs
- https://developer.hashicorp.com/terraform/language/syntax/configuration

---

# HƏFTƏ 2 — Dəyişənlər, state və LocalStack

## Dərs 3: Variables, outputs, locals

### Məqsədlər
- `variable`, `output`, `locals` bloklarını istifadə etmək
- Terraform tip sistemini bilmək (string, number, bool, list, map, object)
- Dəyər ötürmə üsullarını və prioritetini bilmək

### Nəzəri mövzular
1. **Variable bloku:**
   ```hcl
   variable "container_name" {
     type        = string
     description = "Konteynerin adı"
     default     = "web"
   }

   variable "external_port" {
     type = number
     validation {
       condition     = var.external_port > 1024
       error_message = "Port 1024-dən böyük olmalıdır."
     }
   }
   ```
2. **Dəyər ötürmə prioriteti** (aşağıdan yuxarı güclənir):
   `default` → env var (`TF_VAR_external_port=8080`) → `terraform.tfvars` → `-var-file` → `-var` CLI flag
3. **Output:**
   ```hcl
   output "container_url" {
     value       = "http://localhost:${var.external_port}"
     description = "Veb serverin ünvanı"
   }
   ```
4. **Locals** — təkrarlanan ifadələr üçün:
   ```hcl
   locals {
     common_labels = {
       managed_by = "terraform"
       course     = "beginner"
     }
   }
   ```
5. **`sensitive = true`** — parolların plan çıxışında gizlədilməsi

### Praktika (60 dəq)
Dərs 2-dəki Docker nümunəsini refaktor et:
1. Faylları böl: `main.tf`, `variables.tf`, `outputs.tf`, `terraform.tfvars`
2. Konteyner adı, image versiyası və port — hamısı variable olsun
3. `terraform apply -var="external_port=9090"` ilə CLI-dən dəyər ötür
4. `terraform output` və `terraform output -json` əmrlərini yoxla

### Ev tapşırığı
- `list(string)` tipli variable ilə konteynerə çoxlu env dəyişəni ötür
- Validation bloku yaz: image adı boş ola bilməz

### Resurslar
- https://developer.hashicorp.com/terraform/language/values/variables

---

## Dərs 4: State dərinliyi və LocalStack ilə AWS

### Məqsədlər
- State-in Terraform-un "yaddaşı" olduğunu anlamaq
- `terraform state` əmrləri ilə işləmək
- LocalStack üzərində real AWS provider sintaksisi ilə resurs yaratmaq

### Nəzəri mövzular
1. **State nədir:** real dünya ilə kod arasında xəritə. Plan = kod − state − real vəziyyət müqayisəsi.
2. **Drift:** kimsə resursu əl ilə dəyişəndə nə baş verir (`terraform plan` fərqi göstərir, `terraform apply -refresh-only` state-i sinxronlaşdırır)
3. **State əmrləri:**
   - `terraform state list` — bütün resurslar
   - `terraform state show docker_container.web` — bir resursun detalı
   - `terraform state rm` / `terraform import` — qısa tanışlıq (dərin mövzu deyil, mövcudluğunu bilsinlər)
4. **State-in təhlükəsizliyi:** içində parollar ola bilər → git-ə commit ETMƏ

### Praktika (70 dəq): LocalStack üzərində S3 + IAM

```hcl
# providers.tf
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region                      = "eu-north-1"
  access_key                  = "test"
  secret_key                  = "test"
  s3_use_path_style           = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    s3  = "http://localhost:4566"
    iam = "http://localhost:4566"
  }
}
```

```hcl
# main.tf
resource "aws_s3_bucket" "app_data" {
  bucket = "student-app-data"

  tags = {
    Environment = "dev"
    ManagedBy   = "terraform"
  }
}

resource "aws_s3_bucket_versioning" "app_data" {
  bucket = aws_s3_bucket.app_data.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_iam_user" "app" {
  name = "app-service-user"
}
```

Addımlar:
1. `docker compose up -d` ilə LocalStack-i qaldır
2. `terraform init && terraform apply`
3. Yoxla: `aws --endpoint-url=http://localhost:4566 s3 ls`
4. Bucket-i AWS CLI ilə əl ilə sil, sonra `terraform plan` — drift-i öz gözünlə gör
5. `terraform apply` — Terraform bucket-i bərpa edir

### Ev tapşırığı
- SQS queue əlavə et (`aws_sqs_queue`), endpoint-i unudma
- `terraform state show` ilə bucket-in bütün atributlarına bax

### Resurslar
- https://docs.localstack.cloud/user-guide/integrations/terraform/
- https://developer.hashicorp.com/terraform/language/state

---

# HƏFTƏ 3 — Kompozisiya: data sources, meta-arqumentlər, modullar

## Dərs 5: Data sources, count, for_each, depends_on

### Məqsədlər
- Mövcud resursları `data` bloku ilə oxumaq
- `count` və `for_each` ilə çoxlu resurs yaratmaq və fərqlərini bilmək
- `depends_on` və `lifecycle` meta-arqumentlərini tanımaq

### Nəzəri mövzular
1. **Data source** — Terraform-un yaratmadığı, amma oxuduğu resurs:
   ```hcl
   data "aws_iam_user" "existing" {
     user_name = "app-service-user"
   }
   ```
2. **count vs for_each:**
   - `count` — indekslə işləyir; ortadan element silinəndə hamısı sürüşür ⚠️
   - `for_each` — açarla işləyir; stabil, tövsiyə olunan
3. **Şərti resurs:** `count = var.enable_versioning ? 1 : 0`
4. **depends_on** — Terraform asılılıqları özü tapır; yalnız *gizli* asılılıq olduqda lazımdır
5. **lifecycle:**
   ```hcl
   lifecycle {
     prevent_destroy       = true   # production DB üçün sığorta
     create_before_destroy = true   # sıfır-downtime dəyişiklik
   }
   ```

### Praktika (60 dəq): LocalStack-də for_each

```hcl
variable "buckets" {
  type = map(object({
    versioning = bool
  }))
  default = {
    "raw-data"       = { versioning = true }
    "processed-data" = { versioning = true }
    "temp-data"      = { versioning = false }
  }
}

resource "aws_s3_bucket" "this" {
  for_each = var.buckets
  bucket   = "course-${each.key}"
}

resource "aws_s3_bucket_versioning" "this" {
  for_each = { for k, v in var.buckets : k => v if v.versioning }
  bucket   = aws_s3_bucket.this[each.key].id
  versioning_configuration {
    status = "Enabled"
  }
}

output "bucket_names" {
  value = [for b in aws_s3_bucket.this : b.bucket]
}
```

Addımlar:
1. Apply et, `terraform state list`-də `aws_s3_bucket.this["raw-data"]` formasını gör
2. Map-dan `temp-data`-nı sil, plan-da yalnız onun silindiyini yoxla (for_each-in üstünlüyü!)
3. `prevent_destroy = true` əlavə et, `terraform destroy` işlət — xətanı gör və sil

### Ev tapşırığı
- Eyni işi `count` ilə yaz, siyahıdan orta elementi sil və plan fərqini müşahidə et — nəticəni yazılı izah et

### Resurslar
- https://developer.hashicorp.com/terraform/language/meta-arguments/for_each

---

## Dərs 6: Modullar

### Məqsədlər
- Modulun nə olduğunu və nə vaxt lazım olduğunu bilmək
- Local modul yazmaq və çağırmaq
- Terraform Registry-dən hazır modul istifadə etmək

### Nəzəri mövzular
1. **Modul = funksiya:** input (variables) → resurslar → output. Hər Terraform qovluğu əslində moduldur ("root module").
2. **Modul strukturu:**
   ```
   modules/network/
   ├── main.tf
   ├── variables.tf
   └── outputs.tf
   ```
3. **Registry modulları:** `terraform-aws-modules/vpc/aws` kimi — versiya pin etmək vacibdir
4. **Nə vaxt modul yazmalı:** eyni resurs qrupu 2+ yerdə təkrarlananda. Erkən abstraksiya = ziyan.

### Praktika (70 dəq): "network" modulu, iki mühit

```hcl
# modules/network/variables.tf
variable "env" {
  type = string
}

variable "cidr_block" {
  type = string
}
```

```hcl
# modules/network/main.tf
resource "aws_vpc" "this" {
  cidr_block = var.cidr_block
  tags = {
    Name        = "vpc-${var.env}"
    Environment = var.env
  }
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.this.id
  cidr_block = cidrsubnet(var.cidr_block, 8, 1)
  tags = {
    Name = "subnet-${var.env}-public"
  }
}
```

```hcl
# modules/network/outputs.tf
output "vpc_id" {
  value = aws_vpc.this.id
}

output "subnet_id" {
  value = aws_subnet.public.id
}
```

```hcl
# main.tf (root)
module "network_dev" {
  source     = "./modules/network"
  env        = "dev"
  cidr_block = "10.10.0.0/16"
}

module "network_staging" {
  source     = "./modules/network"
  env        = "staging"
  cidr_block = "10.20.0.0/16"
}

output "dev_vpc_id" {
  value = module.network_dev.vpc_id
}
```

Addımlar:
1. LocalStack endpoint-lərinə `ec2 = "http://localhost:4566"` əlavə et
2. `terraform init` — modul yolunun qeydiyyatını gör
3. Apply et, `terraform state list`-də `module.network_dev.aws_vpc.this` formasını göstər
4. `cidrsubnet()` funksiyasını `terraform console`-da interaktiv yoxla

### Ev tapşırığı
- Modula `subnet_count` variable əlavə et, `count` ilə N subnet yaratsın
- Registry-də `terraform-aws-modules/s3-bucket/aws` modulunun docs-una bax, input/output-larını incelə

### Resurslar
- https://developer.hashicorp.com/terraform/language/modules
- https://registry.terraform.io/browse/modules

---

# HƏFTƏ 4 — Real dünya: ESXi on-prem, remote state, komanda işi

## Dərs 7: vSphere/ESXi provider ilə on-prem VM

### Məqsədlər
- Terraform-un cloud-dan kənar (on-prem) istifadəsini görmək
- vsphere provider-i konfiqurasiya etmək
- Credentials-i təhlükəsiz idarə etmək
- Template-dən VM clone etmək

### Nəzəri mövzular
1. **On-prem IaC:** Terraform yalnız cloud üçün deyil — vSphere, Proxmox, OpenStack, hətta şəbəkə avadanlığı
2. **Credentials təhlükəsizliyi:**
   - Parolu `.tf` faylına YAZMA
   - Env vars: `VSPHERE_SERVER`, `VSPHERE_USER`, `VSPHERE_PASSWORD` (provider avtomatik oxuyur)
   - Variable-da `sensitive = true`
3. **Data source-ların rolu:** datastore, network, template — bunları Terraform yaratmır, ESXi-dən *tapır*

### Praktika (70 dəq): Template-dən VM clone

```bash
export VSPHERE_SERVER="vcenter.local"      # və ya ESXi host IP
export VSPHERE_USER="administrator@vsphere.local"
export VSPHERE_PASSWORD="***"
```

```hcl
# providers.tf
terraform {
  required_providers {
    vsphere = {
      source  = "vmware/vsphere"
      version = "~> 2.0"
    }
  }
}

provider "vsphere" {
  allow_unverified_ssl = true   # yalnız test mühitində!
}
```

```hcl
# main.tf
data "vsphere_datacenter" "dc" {
  name = "Datacenter"
}

data "vsphere_datastore" "ds" {
  name          = "datastore1"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "net" {
  name          = "VM Network"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_resource_pool" "pool" {
  name          = "Resources"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_virtual_machine" "template" {
  name          = "ubuntu-22.04-template"
  datacenter_id = data.vsphere_datacenter.dc.id
}

resource "vsphere_virtual_machine" "vm" {
  name             = "tf-demo-vm"
  resource_pool_id = data.vsphere_resource_pool.pool.id
  datastore_id     = data.vsphere_datastore.ds.id

  num_cpus = 2
  memory   = 2048
  guest_id = data.vsphere_virtual_machine.template.guest_id

  network_interface {
    network_id = data.vsphere_network.net.id
  }

  disk {
    label            = "disk0"
    size             = data.vsphere_virtual_machine.template.disks[0].size
    thin_provisioned = true
  }

  clone {
    template_uuid = data.vsphere_virtual_machine.template.id

    customize {
      linux_options {
        host_name = "tf-demo-vm"
        domain    = "local"
      }
      network_interface {}
    }
  }
}

output "vm_ip" {
  value = vsphere_virtual_machine.vm.default_ip_address
}
```

Addımlar:
1. Env vars-ları export et, `terraform init && terraform plan`
2. Data source-ların plan-da necə "known after apply" olmadığını (dərhal oxunduğunu) göstər
3. Apply et, vSphere client-də VM-in yarandığını göstər
4. `num_cpus = 4` et, plan-da in-place update (`~`) ilə replace (`-/+`) fərqini müzakirə et
5. Destroy et

> **Qeyd:** İştirakçılarda ESXi erişimi yoxdursa, bu dərs müəllim ekranından canlı demo kimi keçirilir; iştirakçılar kodu yazıb `terraform validate`-ə qədər gedirlər.

### Ev tapşırığı
- VM adını, CPU/RAM-ı variable-lara çıxar
- `for_each` ilə 2 VM-lik "fleet" konfiqurasiyası yaz (apply etmədən, yalnız `validate`)

### Resurslar
- https://registry.terraform.io/providers/vmware/vsphere/latest/docs

---

## Dərs 8: Remote state, workspaces və yekun layihə

### Məqsədlər
- Remote backend-in komanda işi üçün niyə vacib olduğunu anlamaq
- S3 backend konfiqurasiya etmək (LocalStack üzərində)
- Workspaces ilə mühit ayrımını görmək
- Git + Terraform komanda qaydalarını mənimsəmək

### Nəzəri mövzular
1. **Local state problemi:** iki nəfər eyni anda apply etsə nə olar? Laptop itsə state hara gedir?
2. **Remote backend:** state mərkəzi yerdə (S3, GitLab, Terraform Cloud), **state locking** ilə paralel apply-ın qarşısı alınır
3. **S3 backend (LocalStack ilə):**
   ```hcl
   terraform {
     backend "s3" {
       bucket                      = "tf-state"
       key                         = "course/terraform.tfstate"
       region                      = "eu-north-1"
       endpoints                   = { s3 = "http://localhost:4566" }
       access_key                  = "test"
       secret_key                  = "test"
       skip_credentials_validation = true
       skip_requesting_account_id  = true
       skip_metadata_api_check     = true
       use_path_style              = true
     }
   }
   ```
4. **Workspaces:** `terraform workspace new dev` / `select prod` — eyni kod, ayrı state. `terraform.workspace` ilə kodda istifadə. Limitləri: böyük komandalarda ayrı qovluq/backend key daha şəffafdır.
5. **Komanda qaydaları:**
   - `.gitignore`: `.terraform/`, `*.tfstate`, `*.tfstate.*`, `*.tfvars` (secrets varsa)
   - `terraform fmt -check` və `terraform validate` — CI-da minimum
   - `plan` çıxışı review olunmadan `apply` yoxdur
   - Provider versiyaları pin edilir, `.terraform.lock.hcl` commit olunur

### Praktika (40 dəq)
1. LocalStack-də əl ilə `tf-state` bucket yarat (`aws --endpoint-url=... s3 mb s3://tf-state`)
2. Həftə 3-ün modul layihəsinə backend əlavə et, `terraform init -migrate-state` ilə local state-i köçür
3. `terraform workspace new staging` yarat, `terraform.workspace`-i tag kimi istifadə et, iki workspace-də ayrı-ayrı apply et
4. `.gitignore` yaz, layihəni git repo-ya çevir, ilk commit

### Yekun layihə (evdə, 1 həftə müddət)

Tələbə iki variantdan birini seçir:

**Variant A — LocalStack mini-infrastruktur:**
- Modullarla qurulmuş: S3 (versioning ilə), IAM user + policy, SQS queue
- Ən azı bir `for_each`, bir data source, bir validation
- Remote state (S3 backend), `dev` və `staging` workspaces
- README: necə işə salmalı

**Variant B — ESXi VM fleet:**
- `for_each` ilə N VM (map-da hər VM-in CPU/RAM/adı)
- Bütün credentials env vars-dan, heç bir secret kodda yox
- VM modulu kimi paketlənmiş, root-dan çağırılır
- README + `terraform validate` keçir (apply müəllim mühitində birlikdə)

### Resurslar
- https://developer.hashicorp.com/terraform/language/backend/s3
- https://developer.hashicorp.com/terraform/cli/workspaces

---

# Qiymətləndirmə

| Komponent | Çəki | Qeyd |
|---|---|---|
| Həftəlik mini-quiz (4 ədəd) | 20% | Hər həftənin sonunda 5–7 sual |
| Ev tapşırıqları | 30% | Hər dərsdən sonra, işlək kod tələb olunur |
| Yekun layihə | 50% | Aşağıdakı rubrika ilə |

**Yekun layihə rubrikası:**

| Meyar | Bal |
|---|---|
| `terraform validate` və `fmt -check` keçir | 20 |
| Modul strukturu düzgündür (input/output ayrılıb) | 20 |
| `for_each` / data source / validation düzgün istifadə olunub | 20 |
| Secrets kodda yoxdur, state git-də yoxdur | 20 |
| README aydındır, layihə sıfırdan işə düşür | 20 |

---

# Sonrakı addımlar (kursdan sonra)

- **CI/CD ilə Terraform:** GitLab CI-da `fmt → validate → plan → manual apply` pipeline-ı
- **Terragrunt** — çoxlu mühit/hesab idarəsi üçün DRY qat
- **Policy as Code:** `tflint`, `checkov`, `trivy` ilə statik analiz
- **Testing:** `terraform test` (native), Terratest
- **Sertifikasiya:** HashiCorp Certified: Terraform Associate (003) — bu kurs mövzuların ~70%-ni əhatə edir
- **Real cloud-a keçid:** LocalStack-də öyrənilən AWS kodu minimal dəyişikliklə (endpoints silinir) real AWS-də işləyir

---

*Hazırlanma tarixi: 2026-07-27 · Terraform ~1.9+ nəzərdə tutulub*
