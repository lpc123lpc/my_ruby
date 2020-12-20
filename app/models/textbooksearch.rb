class Textbooksearch < ApplicationRecord
  self.inheritance_column = "not_sti"

  def textbooksearch_textbook
    textbook = Textbook.all

    textbook = textbook.where(['bookname LIKE ?', bookname]) if bookname.present?
    textbook = textbook.where(['department LIKE ?', department]) if department.present?
    textbook = textbook.where(['term LIKE ?', term]) if term.present?

    return textbook
  end
end
