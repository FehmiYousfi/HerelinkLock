.class public Lorg/eclipse/californium/elements/exception/VersionMismatchException;
.super Ljava/lang/IllegalArgumentException;
.source "VersionMismatchException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final readVersion:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 43
    iput p1, p0, Lorg/eclipse/californium/elements/exception/VersionMismatchException;->readVersion:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    iput p2, p0, Lorg/eclipse/californium/elements/exception/VersionMismatchException;->readVersion:I

    return-void
.end method


# virtual methods
.method public getReadVersion()I
    .locals 1

    .line 63
    iget v0, p0, Lorg/eclipse/californium/elements/exception/VersionMismatchException;->readVersion:I

    return v0
.end method
