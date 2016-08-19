<?php

namespace johnitvn\userplus\simple\commands;

use johnitvn\userplus\base\ConsoleController;

/**
 * User manager commands
 *
 * @author John Martin <john.itvn@gmail.com>
 * @since 1.0.0
 */
class UserController extends ConsoleController {

    /**
     * @inheritdoc
     */
    public function actions() {
        return [
            'create-admin' => 'johnitvn\userplus\simple\actions\CommandCreateAction',
        ];
    }

}
