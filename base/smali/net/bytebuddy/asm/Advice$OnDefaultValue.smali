.class public final Lnet/bytebuddy/asm/Advice$OnDefaultValue;
.super Ljava/lang/Object;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnDefaultValue"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 8317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8318
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This marker class is not supposed to be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method