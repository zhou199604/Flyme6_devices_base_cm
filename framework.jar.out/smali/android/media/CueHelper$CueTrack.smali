.class public Landroid/media/CueHelper$CueTrack;
.super Ljava/lang/Object;
.source "CueHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/CueHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CueTrack"
.end annotation


# instance fields
.field public artist:Ljava/lang/String;

.field public musicpath:Ljava/lang/String;

.field public preStart:J

.field public startTime:J

.field final synthetic this$0:Landroid/media/CueHelper;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/media/CueHelper;)V
    .locals 2
    .param p1, "this$0"    # Landroid/media/CueHelper;

    .prologue
    const-wide/16 v0, 0x0

    iput-object p1, p0, Landroid/media/CueHelper$CueTrack;->this$0:Landroid/media/CueHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Landroid/media/CueHelper$CueTrack;->preStart:J

    iput-wide v0, p0, Landroid/media/CueHelper$CueTrack;->startTime:J

    return-void
.end method
