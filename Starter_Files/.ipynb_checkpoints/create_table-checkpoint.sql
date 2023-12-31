{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "6265866e",
   "metadata": {},
   "outputs": [],
   "source": [
    "CREATE TABLE category (\n",
    "    category_id VARCHAR(10)   NOT NULL,\n",
    "    category VARCHAR(50)   NOT NULL,\n",
    "    PRIMARY KEY (category_id)\n",
    ");\n",
    "\n",
    "SELECT * FROM category;\n",
    "\n",
    "--create table subcategory\n",
    "\n",
    "CREATE TABLE subcategory (\n",
    "    subcategory_id VARCHAR(10)   NOT NULL,\n",
    "    subcategory VARCHAR(50)   NOT NULL,\n",
    "    PRIMARY KEY (subcategory_id)\n",
    ");\n",
    "SELECT * FROM subcategory;\n",
    "\n",
    "--create table contacts\n",
    "\n",
    "CREATE TABLE contacts (\n",
    "    contact_id INT   NOT NULL,\n",
    "    first_name VARCHAR(50)   NOT NULL,\n",
    "    last_name VARCHAR(50)   NOT NULL,\n",
    "    email VARCHAR(100)   NOT NULL,\n",
    "    PRIMARY KEY (contact_id)\n",
    ");\n",
    "\n",
    "SELECT * FROM contacts;\n",
    "\n",
    "--create table campaign\n",
    "\n",
    "CREATE TABLE campaign (\n",
    "    cf_id INT NOT NULL,\n",
    "    contact_id INT NOT NULL,\n",
    "    company_name VARCHAR(100) NOT NULL,\n",
    "    description TEXT ,\n",
    "    goal NUMERIC NOT NULL,\n",
    "    pledged NUMERIC ,\n",
    "    outcome VARCHAR(20) ,\n",
    "    backers_count INT ,\n",
    "    country VARCHAR(10) NOT NULL,\n",
    "    currency VARCHAR(10) NOT NULL,\n",
    "    launch_date DATE NOT NULL,\n",
    "    end_date DATE NOT NULL,\n",
    "    category_id VARCHAR(10) NOT NULL,\n",
    "    subcategory_id VARCHAR(50) NOT NULL,\n",
    "\tPRIMARY KEY (cf_id),\n",
    "\tFOREIGN KEY (contact_id) REFERENCES contacts(contact_id),\n",
    " \tFOREIGN KEY (category_id) REFERENCES category(category_id),\n",
    "    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)\n",
    ");\n",
    "\n",
    "SELECT * FROM campaign;"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3 (ipykernel)",
   "language": "python",
   "name": "python3"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
