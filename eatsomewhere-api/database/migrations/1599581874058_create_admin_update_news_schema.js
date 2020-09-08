'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class CreateAdminUpdateNewsSchema extends Schema {
  up () {
    this.create('create_admin_update_news', (table) => {
      table.increments()
      table.timestamps()
    })
  }

  down () {
    this.drop('create_admin_update_news')
  }
}

module.exports = CreateAdminUpdateNewsSchema
