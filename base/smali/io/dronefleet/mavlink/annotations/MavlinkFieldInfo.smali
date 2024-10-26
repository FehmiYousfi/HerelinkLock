.class public interface abstract annotation Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
.super Ljava/lang/Object;
.source "MavlinkFieldInfo.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x0
        description = "No description provided"
        enumType = V
        extension = false
        signed = false
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract arraySize()I
.end method

.method public abstract description()Ljava/lang/String;
.end method

.method public abstract enumType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract extension()Z
.end method

.method public abstract position()I
.end method

.method public abstract signed()Z
.end method

.method public abstract unitSize()I
.end method
