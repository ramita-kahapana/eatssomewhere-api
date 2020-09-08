'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class CreateAdminSchema extends Schema {
  up () {
    this.create('create_admins', (table) => {
      table.increments()
      table.timestamps()
    })
  }

  down () {
    this.drop('create_admins')
  }
}

module.exports = CreateAdminSchema
