.class public Lorg/eclipse/californium/scandium/dtls/DtlsHandshakeTimeoutException;
.super Lorg/eclipse/californium/scandium/dtls/DtlsException;
.source "DtlsHandshakeTimeoutException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final flightNumber:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/DtlsException;-><init>(Ljava/lang/String;)V

    .line 29
    iput p2, p0, Lorg/eclipse/californium/scandium/dtls/DtlsHandshakeTimeoutException;->flightNumber:I

    return-void
.end method


# virtual methods
.method public getFlightNumber()I
    .locals 1

    .line 38
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/DtlsHandshakeTimeoutException;->flightNumber:I

    return v0
.end method
