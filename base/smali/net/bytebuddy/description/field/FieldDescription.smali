.class public interface abstract Lnet/bytebuddy/description/field/FieldDescription;
.super Ljava/lang/Object;
.source "FieldDescription.java"

# interfaces
.implements Lnet/bytebuddy/description/ByteCodeElement;
.implements Lnet/bytebuddy/description/ModifierReviewable$ForFieldDescription;
.implements Lnet/bytebuddy/description/NamedElement$WithGenericName;
.implements Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;,
        Lnet/bytebuddy/description/field/FieldDescription$Token;,
        Lnet/bytebuddy/description/field/FieldDescription$TypeSubstituting;,
        Lnet/bytebuddy/description/field/FieldDescription$Latent;,
        Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;,
        Lnet/bytebuddy/description/field/FieldDescription$AbstractBase;,
        Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;,
        Lnet/bytebuddy/description/field/FieldDescription$InGenericShape;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/description/ByteCodeElement;",
        "Lnet/bytebuddy/description/ModifierReviewable$ForFieldDescription;",
        "Lnet/bytebuddy/description/NamedElement$WithGenericName;",
        "Lnet/bytebuddy/description/ByteCodeElement$TypeDependant<",
        "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
        "Lnet/bytebuddy/description/field/FieldDescription$Token;",
        ">;"
    }
.end annotation


# static fields
.field public static final NO_DEFAULT_VALUE:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract asSignatureToken()Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;
.end method

.method public abstract getActualModifiers()I
.end method

.method public abstract getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
.end method
