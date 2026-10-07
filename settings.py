from pydantic_settings import BaseSettings
from pydantic import Field
from pathlib import Path

class Settings(BaseSettings):
    project_dir: Path = Field(default=Path(__file__).parent / "my_project", description="The directory of the project")

    class Config:
        env_file = ".env"
        env_file_encoding = "utf-8"

settings = Settings()