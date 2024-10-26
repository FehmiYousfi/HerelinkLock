.class public interface abstract Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping;
.super Ljava/lang/Object;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OffsetMapping"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Illegal;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForUserValue;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThrowable;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForReturnValue;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForEnterValue;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForStubValue;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForUnusedValue;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForOrigin;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForField;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedType;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForAllArguments;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForThisReference;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForArgument;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Factory;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context;
    }
.end annotation


# virtual methods
.method public abstract resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Context;)Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target;
.end method
