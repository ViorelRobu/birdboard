@extends('layouts.app')

@section('content')

    <form action="/projects" method="post">

        @csrf

        <h1>Create a project</h1>
        <div class="field">
            <label for="title">Project title</label>
            <div class="control">
                <input type="text" name="title" placeholder="Your project title here...">
            </div>
        </div>
        <div class="field">
            <label for="description">Project description</label>
            <div class="control">
                <textarea name="description" cols="30" rows="10" placeholder="Your project description goes here..."></textarea>
            </div>
        </div>
        <button type="submit">Create Project</button>
        <a href="/projects">Cancel</a>

    </form>

@endsection
