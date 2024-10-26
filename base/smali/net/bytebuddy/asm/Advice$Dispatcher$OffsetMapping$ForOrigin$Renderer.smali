.class public interface abstract Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForOrigin$Renderer;
.super Ljava/lang/Object;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForOrigin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "Renderer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForOrigin$Renderer$ForConstantValue;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForOrigin$Renderer$ForStringRepresentation;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForOrigin$Renderer$ForReturnTypeName;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForOrigin$Renderer$ForJavaSignature;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForOrigin$Renderer$ForDescriptor;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForOrigin$Renderer$ForTypeName;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForOrigin$Renderer$ForMethodName;
    }
.end annotation


# virtual methods
.method public abstract apply(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;)Ljava/lang/String;
.end method
