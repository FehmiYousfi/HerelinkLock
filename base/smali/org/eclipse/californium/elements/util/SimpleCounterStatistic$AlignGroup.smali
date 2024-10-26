.class public Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;
.super Ljava/lang/Object;
.source "SimpleCounterStatistic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlignGroup"
.end annotation


# instance fields
.field align:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;
    .locals 1

    .line 324
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 325
    iget v0, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;->align:I

    if-le p1, v0, :cond_0

    .line 326
    iput p1, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;->align:I

    :cond_0
    return-object p0
.end method

.method public add(Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;)Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;
    .locals 0

    .line 314
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;->add(Ljava/lang/String;)Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;

    move-result-object p1

    return-object p1
.end method

.method public getAlign()I
    .locals 1

    .line 339
    iget v0, p0, Lorg/eclipse/californium/elements/util/SimpleCounterStatistic$AlignGroup;->align:I

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    return v0
.end method
