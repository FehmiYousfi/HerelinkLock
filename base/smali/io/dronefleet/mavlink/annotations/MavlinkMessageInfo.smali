.class public interface abstract annotation Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
.super Ljava/lang/Object;
.source "MavlinkMessageInfo.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
        description = "No description provided"
        workInProgress = false
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract crc()I
.end method

.method public abstract description()Ljava/lang/String;
.end method

.method public abstract id()I
.end method

.method public abstract workInProgress()Z
.end method
