.class public Lorg/eclipse/californium/elements/config/PropertiesUtility;
.super Ljava/lang/Object;
.source "PropertiesUtility.java"


# static fields
.field private static final HEX_DIGIT:[C

.field private static final QUOTED:Ljava/lang/String; = "=:#!\\"

.field private static final SUBSTITUDED:Ljava/lang/String; = "\t\n\r\u000c"

.field private static final SUBSTITUDES:Ljava/lang/String; = "tnrf"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 36
    fill-array-data v0, :array_0

    sput-object v0, Lorg/eclipse/californium/elements/config/PropertiesUtility;->HEX_DIGIT:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendUnicode(CLjava/lang/StringBuilder;)V
    .locals 2

    const/16 v0, 0x5c

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x75

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    sget-object v0, Lorg/eclipse/californium/elements/config/PropertiesUtility;->HEX_DIGIT:[C

    shr-int/lit8 v1, p0, 0xc

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    sget-object v0, Lorg/eclipse/californium/elements/config/PropertiesUtility;->HEX_DIGIT:[C

    shr-int/lit8 v1, p0, 0x8

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    sget-object v0, Lorg/eclipse/californium/elements/config/PropertiesUtility;->HEX_DIGIT:[C

    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    sget-object v0, Lorg/eclipse/californium/elements/config/PropertiesUtility;->HEX_DIGIT:[C

    and-int/lit8 p0, p0, 0xf

    aget-char p0, v0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static normalize(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    .line 53
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    const/16 v5, 0x20

    if-ne v3, v5, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v6, "=:#!\\"

    .line 54
    invoke-virtual {v6, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_2

    .line 55
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v6, "\t\n\r\u000c"

    .line 59
    invoke-virtual {v6, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_3

    .line 61
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "tnrf"

    .line 62
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    if-lt v3, v5, :cond_5

    const/16 v4, 0x80

    if-lt v3, v4, :cond_4

    goto :goto_1

    .line 68
    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 66
    :cond_5
    :goto_1
    invoke-static {v3, v1}, Lorg/eclipse/californium/elements/config/PropertiesUtility;->appendUnicode(CLjava/lang/StringBuilder;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static normalizeComments(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    if-nez p0, :cond_0

    const-string p0, "#"

    return-object p0

    .line 87
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x23

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    .line 91
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v5, v0, :cond_8

    .line 94
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    const/16 v10, 0xd

    if-ne v8, v10, :cond_1

    add-int/lit8 v11, v5, 0x1

    if-ge v11, v0, :cond_1

    .line 96
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v9, :cond_1

    move v5, v11

    move v8, v12

    :cond_1
    const/4 v11, 0x1

    if-eq v8, v9, :cond_7

    if-eq v8, v10, :cond_7

    const/16 v9, 0x40

    if-le v6, v9, :cond_2

    .line 102
    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v7, :cond_4

    if-eq v8, v2, :cond_3

    const/16 v7, 0x21

    if-eq v8, v7, :cond_3

    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    move v7, v4

    :cond_4
    if-lt v8, v3, :cond_6

    const/16 v9, 0x80

    if-lt v8, v9, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 119
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    :goto_1
    add-int/lit8 v6, v6, 0x6

    .line 116
    invoke-static {v8, v1}, Lorg/eclipse/californium/elements/config/PropertiesUtility;->appendUnicode(CLjava/lang/StringBuilder;)V

    goto :goto_3

    .line 104
    :cond_7
    :goto_2
    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v4

    move v7, v11

    :goto_3
    add-int/2addr v5, v11

    goto :goto_0

    .line 124
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
