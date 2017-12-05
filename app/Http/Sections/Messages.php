<?php

namespace App\Http\Sections;

use SleepingOwl\Admin\Contracts\Display\DisplayInterface;
use SleepingOwl\Admin\Contracts\Form\FormInterface;
use SleepingOwl\Admin\Section;

/**
 * Class Posts
 *
 * @property \App\Models\Post $model
 *
 * @see http://sleepingowladmin.ru/docs/model_configuration_section
 */
class Messages extends Section
{
    /**
     * @see http://sleepingowladmin.ru/docs/model_configuration#ограничение-прав-доступа
     *
     * @var bool
     */
    protected $checkAccess = false;

    /**
     * @var string
     */
    protected $title;

    /**
     * @var string
     */
    protected $alias;


    public function initialize()
    {
        $this->addToNavigation()->setIcon('fa fa-bank')->setPriority(0);
    }

    /**
     * @return DisplayInterface
     */
    public function onDisplay()
    {
        return \AdminDisplay::table()
            ->setColumns([
                \AdminColumn::text('name')->setLabel('Имя'),
                \AdminColumn::text('phone')->setLabel('Телефон'),
                \AdminColumn::text('email')->setLabel('Email'),
                \AdminColumn::text('message')->setLabel('Сообщение'),
                \AdminColumn::datetime('created_at')->setLabel('Дата создания')->setFormat('d.m.Y')->setWidth('150px'),


            ]);
    }

    /**
     * @param int $id
     *
     * @return FormInterface
     */
    public function onEdit($id)
    {


        $form = \AdminForm::form()->setElements([
            \AdminFormElement::text('name', 'Имя'),
            \AdminFormElement::text('phone', 'Телефон'),
            \AdminFormElement::text('email', 'Email'),
            \AdminFormElement::textarea('message', 'Сообщение'),
            \AdminFormElement::text('country', 'Город'),
            \AdminFormElement::text('gender', 'Пол'),
            \AdminFormElement::text('dummy', 'Модель'),

        ]);
        return $form;
    }

    /**
     * @return FormInterface
     */
    public function onCreate()
    {
        return $this->onEdit(null);
    }

    /**
     * @return void
     */
    public function onDelete($id)
    {
        // remove if unused
    }

    /**
     * @return void
     */
    public function onRestore($id)
    {

    }
}