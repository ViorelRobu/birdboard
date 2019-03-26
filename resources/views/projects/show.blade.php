@extends('layouts.app')

@section('content')
    <header class="flex items-center mb-3 py-4">
        <div class="flex justify-between items-end w-full">
            <p class="text-grey text-sm font-normal">
                <a href="/projects" class="text-grey text-sm font-normal no-underline">My Projects</a> / {{ $project->title }}
            </p>
            <a href="{{ $project->path() . '/edit' }}" class="button">Edit Project</a>
        </div>
    </header>

    <main>
        <div class="lg:flex -mx-3">
            <div class="lg:w-3/4 px-3 mb-8">
                <div class="mb-6">
                    <h2 class="text-grey text-lg font-normal mb-3">Tasks</h3>
                    {{-- Tasks --}}
                    @forelse ($project->tasks as $task)
                        <form action="{{ $task->path() }}" method="post">
                            @method('PATCH')
                            @csrf
                            <div class="card mb-3">
                                <div class="flex">
                                    <input type="text" name="body" value="{{ $task->body }}" class="w-full {{ $task->completed ? 'text-grey' : '' }}">
                                    <input type="checkbox" name="completed" onChange="this.form.submit()" {{ $task->completed ? 'checked' : '' }}>
                                </div>
                            </div>
                        </form>
                    @empty
                        <div class="card mb-3">There are no tasks associated with this project. </div>
                    @endforelse
                        <div class="card mb-3">
                            <form action="{{ $project->path() . '/tasks' }}" method="post">
                                @csrf
                                <input type="text" placeholder="Add a new task..." class="w-full" name="body">
                            </form>
                        </div>
                </div>
                <div>
                    <h2 class="text-grey text-lg font-normal mb-3">General Notes</h3>
                    {{-- General notes --}}
                    <form action="{{ $project->path() }}" method="post">
                        @csrf
                        @method('PATCH')
                        <textarea
                            name="notes"
                            class="card w-full mb-4"
                            style="min-height: 200px;"
                            placeholder="Anything special you want to make a note of?"
                            >{{ $project->notes }}
                        </textarea>
                        <button type="submit" class="button">Save</button>
                    </form>
                    @if ($errors->any())
                        <div class="field mt-6">
                            @foreach ($errors->all() as $error)
                                <li class="text-sm text-red">{{ $error }}</li>
                            @endforeach
                        </div>
                    @endif
                </div>
            </div>
            <div class="lg:w-1/4 px-3 lg:py-8">
                @include('projects.card')
                @include('projects.activity.card')
            </div>
        </div>
    </main>

@endsection
