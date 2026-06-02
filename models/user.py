#!/usr/bin/python3
"""This module defines the User class."""
from models.base_model import BaseModel


class User(BaseModel):
    """Represents a User."""

    email = ""
    password = ""
    first_name = ""
    last_name = ""

# Add user email and password validation methods
def validate_email(email):
    """Validate email format"""
    return "@" in email
