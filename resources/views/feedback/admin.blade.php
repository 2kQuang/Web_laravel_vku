@extends('main')
@section('content')
<table class="table table-bordered text-center" style="margin-top:20px;">
    <thead>
        <tr class="bg-dark text-light">
            <th scope="col">Name</th>
            <th scope="col">Email</th>
            <th scope="col">Subject</th>
            <th scope="col">Content</th>
        </tr>
    </thead>
    <tbody>
        @forelse($feedbacks as $feedback)

        <tr>
            <td>{{$feedback['name']}}</td>
            <td><a href="mailto: {{$feedback['email']}}">{{$feedback['email']}}</a></td>
            <td>{{$feedback['subject']}}</td>
            <td>{{$feedback['content']}}</td>
            
        </tr>
        @empty
        <tr>
            <td colspan="4">No Feedback</td>
        </tr>
        @endforelse
    </tbody>
</table>
{{$feedbacks->links()}}
@endsection