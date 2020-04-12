resource "aws_elastic_beanstalk_application" "django-project" {
  name        = "django-project"
  description = "django-project"
}

resource "aws_elastic_beanstalk_environment" "django-project-env" {
  name                = "django-project-env"
  application         = "${aws_elastic_beanstalk_application.django-project.name}"
  solution_stack_name = "64bit Amazon Linux 2018.03 v2.20.0 running Multi-container Docker 18.09.9-ce (Generic)"
}