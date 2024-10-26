.class public Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForArray$ReadOnly;
.super Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForArray;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ReadOnly"
.end annotation


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            ">;)V"
        }
    .end annotation

    .line 1990
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Target$ForArray;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public resolveWrite()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 2

    .line 1995
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot write to read-only array value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
