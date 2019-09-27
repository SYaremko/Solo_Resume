<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<style>
    .main-timeline8{overflow:hidden;position:relative}
    .main-timeline8:after,.main-timeline8:before{content:"";display:block;width:100%;clear:both}
    .main-timeline8:before{content:"";width:3px;height:100%;background:#d6d5d5;position:absolute;top:30px;left:50%}
    .main-timeline8 .timeline{width:50%;float:left;padding-right:30px;position:relative}
    .main-timeline8 .timeline-icon{width:32px;height:32px;border-radius:50%;background:#fff;border:3px solid #45c4fe;position:absolute;top:5.5%;right:-17.5px}
    .main-timeline8 .year{display:block;padding:10px;margin:0;font-size:30px;color:#fff;border-radius:0 50px 50px 0;background: #61c7fe;text-align:center;position:relative}
    .main-timeline8 .year:before{content:"";border-top:35px solid #c3eaf5;border-left:35px solid transparent;position:absolute;bottom:-35px;left:0}
    .main-timeline8 .timeline-content{padding:30px 20px;margin:0 45px 0 35px;background:#f2f2f2}
    .main-timeline8 .title{font-size:19px;font-weight:700;color:#504f54;margin:0 0 10px}
    .main-timeline8 .description{font-size:14px;color:#7d7b7b;margin:0}
    .main-timeline8 .timeline:nth-child(2n){padding:0 0 0 30px}
    .main-timeline8 .timeline:nth-child(2n) .timeline-icon{right:auto;left:-14.5px}
    .main-timeline8 .timeline:nth-child(2n) .year{border-radius:50px 0 0 50px;background:#7eda99}
    .main-timeline8 .timeline:nth-child(2n) .year:before{border-left:none;border-right:35px solid transparent;left:auto;right:0}
    .main-timeline8 .timeline:nth-child(2n) .timeline-content{text-align:right;margin:0 35px 0 45px}
    .main-timeline8 .timeline:nth-child(2){margin-top:170px}
    .main-timeline8 .timeline:nth-child(odd){margin:-175px 0 0}
    .main-timeline8 .timeline:nth-child(even){margin-bottom:80px}
    .main-timeline8 .timeline:first-child,.main-timeline8 .timeline:last-child:nth-child(even){margin:0}
    .main-timeline8 .timeline:nth-child(2n) .timeline-icon{border-color:#7eda99}
    .main-timeline8 .timeline:nth-child(2n) .year:before{border-top-color:#92efad}
    .main-timeline8 .timeline:nth-child(3n) .timeline-icon{border-color:#8a5ec1}
    .main-timeline8 .timeline:nth-child(3n) .year{background:#8a5ec1}
    .main-timeline8 .timeline:nth-child(3n) .year:before{border-top-color:#a381cf}
    .main-timeline8 .timeline:nth-child(4n) .timeline-icon{border-color:#f98d9c}
    .main-timeline8 .timeline:nth-child(4n) .year{background:#f98d9c}
    .main-timeline8 .timeline:nth-child(4n) .year:before{border-top-color:#f2aab3}
    @media only screen and (max-width:767px){.main-timeline8{overflow:visible}
        .main-timeline8:before{top:0;left:0}
        .main-timeline8 .timeline:nth-child(2),.main-timeline8 .timeline:nth-child(even),.main-timeline8 .timeline:nth-child(odd){margin:0}
        .main-timeline8 .timeline{width:100%;float:none;padding:0 0 0 30px;margin-bottom:20px!important}
        .main-timeline8 .timeline:last-child{margin:0!important}
        .main-timeline8 .timeline-icon{right:auto;left:-14.5px}
        .main-timeline8 .year{border-radius:50px 0 0 50px}
        .main-timeline8 .year:before{border-left:none;border-right:35px solid transparent;left:auto;right:0}
        .main-timeline8 .timeline-content{margin:0 35px 0 45px}
    }

</style>
<div class="card" style="border-color: darkcyan">
    <div class="card-header bg-info text-white">
        <h6 class="card-title">
            <i class="fa fa-briefcase"></i> Practice <a class="edit-block" href="/edit/practice">Edit</a>
        </h6>
    </div>
    <div class="card-body">
        <div class="container">
            <div class="container">

                <div class="row">
                    <div class="col-md-12">
                        <div class="main-timeline8">
                            <div class="timeline">
                                <span class="timeline-icon"></span>
                                <span class="year">
                                    <p>
                                        <small class="dates"><i class="fa fa-calendar"></i> Mar 2016 - <strong>Current</strong></small>
                                    </p>
                                </span>
                                <div class="timeline-content" style="width: 240px">
                                    <h3 class="title">Web Desginer</h3>
                                    <p class="description">
                                    <h6>Responsebility:</h6>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivctetur adipiscing elit. Vivamus mattis justoorem ipsum dolor sit amus mattis </p>
                                    <h6>Demo:</h6>
                                    <p>Lorem ipsum dolor sit amet,</p>
                                    <h6>Source code:</h6>
                                    <p> Lorem ipsum dolor sit amet,</p>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <hr>
    </div>
</div>