.class public interface abstract Lnet/bytebuddy/description/ByteCodeElement;
.super Ljava/lang/Object;
.source "ByteCodeElement.java"

# interfaces
.implements Lnet/bytebuddy/description/NamedElement$WithRuntimeName;
.implements Lnet/bytebuddy/description/ModifierReviewable;
.implements Lnet/bytebuddy/description/DeclaredByType;
.implements Lnet/bytebuddy/description/annotation/AnnotationSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/ByteCodeElement$Token;,
        Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;
    }
.end annotation


# static fields
.field public static final NON_GENERIC_SIGNATURE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract getDescriptor()Ljava/lang/String;
.end method

.method public abstract getGenericSignature()Ljava/lang/String;
.end method

.method public abstract isAccessibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z
.end method

.method public abstract isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z
.end method
