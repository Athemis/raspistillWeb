# -*- coding: utf-8 -*- 
<%inherit file="timelapse-layout.mako"/>

<div class="container">
  <div class="row">
    % if timelapse:
      <div class="col-lg-12">
        <div class="alert alert-danger alert-dismissable fade show">
          <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
          <strong>Timelapse in Progress.</strong> Please wait until the timelapse process has finished.
          <div class="progress">
            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: ${percentage_completed}%;">${percentage_completed}%</div>
          </div>        
        </div>
      </div>
    % else:
    <div class="col-lg-12">
      <div class="card my-3">
        <div class="card-header">
            <h3 class="card-title">Timelapse</h3>
          </div>
          <div class="card-body">
            There is currently no timelapse in progress. You can start a timelapse with the folowing preferences or edit these settings on the <a href="/settings"><strong>settings page.</strong></a>
            <dl>
              <dt>Interval</dt>
              <dd>${timelapseInterval}ms</dd>
              <dt>Duration</dt>
              <dd>${timelapseTime}ms</dd>
            </dl>
            <form method="post">
              <input type="button" class="btn btn-primary btn-lg" value="Start Timelapse" onclick="location.href='/timelapse_start'">
            </form>
          </div>
      </div>
    </div>
    % endif    
  </div>
  <div class="row">
  % for file in timelapseDatabase:     
    <div class="col-sm-6 col-md-4 col-lg-3">
      <div class="card my-3">
        <div class="card-header">
          <h3 class="card-title">${file['timeStart']}</h3>
        </div>
        <div class="card-body">
          <dl>
            <dt>Image Effect</dt>
            <dd>${file['image_effect']}</dd>
            <dt>Exposure Mode</dt>
            <dd>${file['exposure_mode']}</dd>
            <dt>AWB Mode</dt>
            <dd>${file['awb_mode']}</dd>
            <dt>Start</dt>
            <dd>${file['timeStart']}</dd>
            <dt>End</dt>
            <dd>${file['timeEnd']}</dd>
          </dl>
          <form action="delete_timelapse" method="POST">
            <button type="submit" name="id" value="${file['id']}" class="btn btn-danger btn-sm btn-block mb-2">Delete</button>
          </form>
          <a href="${request.static_url('raspistillweb:time-lapse/')}${file['filename']}.tar.gz" class="btn btn-success btn-sm btn-block">Download</a>
        </div>
      </div>     
    </div>   
  % endfor  
  </div>  
</div>
  	

