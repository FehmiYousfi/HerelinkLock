.class final enum Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod$3;
.super Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2662
    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$ForInstrumentedMethod;-><init>(Ljava/lang/String;ILnet/bytebuddy/asm/Advice$1;)V

    return-void
.end method


# virtual methods
.method protected isRepresentable(Lnet/bytebuddy/description/method/MethodDescription;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
