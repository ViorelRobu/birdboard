@extends('layouts.app')

@section('content')
    <header class="flex items-center mb-3 py-4">
        <div class="flex justify-between items-end w-full">
            <p class="text-grey text-sm font-normal">
                <a href="/projects" class="text-grey text-sm font-normal no-underline">My Projects</a> / {{ $project->title }}
            </p>
            <a href="/projects/create" class="button">New Project</a>
        </div>
    </header>

    <main>
        <div class="lg:flex -mx-3">
            <div class="lg:w-3/4 px-3 mb-8">
                <div class="mb-6">
                    <h2 class="text-grey text-lg font-normal mb-3">Tasks</h3>
                    {{-- Tasks --}}
                    <div class="card mb-3">Lorem Ipsum</div>
                    <div class="card mb-3">Lorem Ipsum</div>
                    <div class="card mb-3">Lorem Ipsum</div>
                    <div class="card mb-3">Lorem Ipsum</div>
                    <div class="card mb-3">Lorem Ipsum</div>
                    <div class="card">Lorem Ipsum</div>
                </div>
                <div>
                    <h2 class="text-grey text-lg font-normal mb-3">General Notes</h3>
                    {{-- General notes --}}
                    <textarea class="card w-full" style="min-height: 200px;">Lorem Ipsum</textarea>
                </div>
            </div>
            <div class="lg:w-1/4 px-3 lg:py-8">
                @include('projects.card')
            </div>
        </div>
    </main>

@endsection
