<?php

namespace App\Http\Sections;

use App\Models\Post;
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
class Posts extends Section
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


    

    /**
     * @return DisplayInterface
     */
    public function onDisplay()
    {
        return \AdminDisplay::table()
            ->setColumns([
                \AdminColumn::text('id')->setLabel('ID страницы'),
                \AdminColumn::text('title')->setLabel('Заголовок'),
                \AdminColumn::datetime('created_at')->setLabel('Дата создания')->setFormat('d.m.Y')->setWidth('150px'),
                \AdminColumn::datetime('updated_at')->setLabel('Дата изменения')->setFormat('d.m.Y')->setWidth('150px'),
                \AdminColumnEditable::checkbox('published', 'Опубликовано')->setLabel('Публикация'),
                \AdminColumnEditable::text('parent_id')->SetLabel('Главная страница'),
                \AdminColumnEditable::text('priority', 'Приоритет страницы'),
                \AdminColumnEditable::checkbox('special_offer', 'Специальные предложения')->setLabel('Специальные предложения'),
                \AdminColumnEditable::checkbox('services', 'Наши сервисы')->setLabel('Наши сервисы'),
            ]);

        $display->setColumns([
            AdminColumn::lists('parent_id', 'Публикации'),
        ]);
        return $display;
    }

    /**
     * @param int $id
     *
     * @return FormInterface
     */
    public function onEdit($id)
    {


        $form = \AdminForm::form()->setElements([

            \AdminFormElement::text('title', 'Заголовок')->required(),
            \AdminFormElement::wysiwyg('description', 'Описание')->required(),
            \AdminFormElement::wysiwyg('preview', 'Анонс'),
            \AdminFormElement::text('meta_title', 'Meta Заголовок')->required(),
            \AdminFormElement::text('meta_description', 'Meta Описание')->required(),
            \AdminFormElement::text('kwords', 'Keywords')->required(),
            \AdminFormElement::select('parent_id', 'Публикации')->setModelForOptions(Post::class)->setDisplay('title'),
            \AdminFormElement::text('url', 'Url')->required(),
            \AdminFormElement::checkbox('published', 'Публикация'),
            \AdminFormElement::text('priority', 'Приоритет страницы')->required(),
            \AdminFormElement::checkbox('special_offer', 'Специальные предложения'),
            \AdminFormElement::text('special_images', 'Картинки спец.предложений'),
            \AdminFormElement::checkbox('services', 'Наши сервисы'),



//            $tabs = \AdminDisplay::tabbed([
//                    \AdminFormElement::columns()
//                        ->addColumn([
//                            \AdminFormElement::select('id', 'Публикации', Post::class)->setDisplay('title')
//                        ]),
//    ])

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
