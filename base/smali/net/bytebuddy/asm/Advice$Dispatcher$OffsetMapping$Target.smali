.class public interface abstract Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target;
.super Ljava/lang/Object;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Target"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForStackManipulation;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForField;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForArray;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForVariable;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForDefaultValue;
    }
.end annotation


# virtual methods
.method public abstract resolveIncrement(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
.end method

.method public abstract resolveRead()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
.end method

.method public abstract resolveWrite()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
.end method
