.class Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForField$ReadOnly;
.super Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForField;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReadOnly"
.end annotation


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V
    .locals 0

    .line 2075
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForField;-><init>(Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-void
.end method


# virtual methods
.method public resolveIncrement(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    .line 2085
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot write to read-only field value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resolveWrite()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 2

    .line 2080
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot write to read-only field value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
