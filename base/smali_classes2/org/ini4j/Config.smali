.class public Lorg/ini4j/Config;
.super Ljava/lang/Object;
.source "Config.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT_COMMENT:Z = true

.field public static final DEFAULT_EMPTY_OPTION:Z = false

.field public static final DEFAULT_EMPTY_SECTION:Z = false

.field public static final DEFAULT_ESCAPE:Z = true

.field public static final DEFAULT_ESCAPE_KEY_ONLY:Z = false

.field public static final DEFAULT_ESCAPE_NEWLINE:Z = true

.field public static final DEFAULT_FILE_ENCODING:Ljava/nio/charset/Charset;

.field public static final DEFAULT_GLOBAL_SECTION:Z = false

.field public static final DEFAULT_GLOBAL_SECTION_NAME:Ljava/lang/String; = "?"

.field public static final DEFAULT_HEADER_COMMENT:Z = true

.field public static final DEFAULT_INCLUDE:Z = false

.field public static final DEFAULT_LINE_SEPARATOR:Ljava/lang/String;

.field public static final DEFAULT_LOWER_CASE_OPTION:Z = false

.field public static final DEFAULT_LOWER_CASE_SECTION:Z = false

.field public static final DEFAULT_MULTI_OPTION:Z = true

.field public static final DEFAULT_MULTI_SECTION:Z = false

.field public static final DEFAULT_PATH_SEPARATOR:C = '/'

.field public static final DEFAULT_PROPERTY_FIRST_UPPER:Z = false

.field public static final DEFAULT_STRICT_OPERATOR:Z = false

.field public static final DEFAULT_TREE:Z = true

.field public static final DEFAULT_UNNAMED_SECTION:Z = false

.field private static final GLOBAL:Lorg/ini4j/Config;

.field public static final KEY_PREFIX:Ljava/lang/String; = "org.ini4j.config."

.field public static final PROP_COMMENT:Ljava/lang/String; = "comment"

.field public static final PROP_EMPTY_OPTION:Ljava/lang/String; = "emptyOption"

.field public static final PROP_EMPTY_SECTION:Ljava/lang/String; = "emptySection"

.field public static final PROP_ESCAPE:Ljava/lang/String; = "escape"

.field public static final PROP_ESCAPE_KEY_ONLY:Ljava/lang/String; = "escapeKey"

.field public static final PROP_ESCAPE_NEWLINE:Ljava/lang/String; = "escapeNewline"

.field public static final PROP_FILE_ENCODING:Ljava/lang/String; = "fileEncoding"

.field public static final PROP_GLOBAL_SECTION:Ljava/lang/String; = "globalSection"

.field public static final PROP_GLOBAL_SECTION_NAME:Ljava/lang/String; = "globalSectionName"

.field public static final PROP_HEADER_COMMENT:Ljava/lang/String; = "headerComment"

.field public static final PROP_INCLUDE:Ljava/lang/String; = "include"

.field public static final PROP_LINE_SEPARATOR:Ljava/lang/String; = "lineSeparator"

.field public static final PROP_LOWER_CASE_OPTION:Ljava/lang/String; = "lowerCaseOption"

.field public static final PROP_LOWER_CASE_SECTION:Ljava/lang/String; = "lowerCaseSection"

.field public static final PROP_MULTI_OPTION:Ljava/lang/String; = "multiOption"

.field public static final PROP_MULTI_SECTION:Ljava/lang/String; = "multiSection"

.field public static final PROP_PATH_SEPARATOR:Ljava/lang/String; = "pathSeparator"

.field public static final PROP_PROPERTY_FIRST_UPPER:Ljava/lang/String; = "propertyFirstUpper"

.field public static final PROP_STRICT_OPERATOR:Ljava/lang/String; = "strictOperator"

.field public static final PROP_TREE:Ljava/lang/String; = "tree"

.field public static final PROP_UNNAMED_SECTION:Ljava/lang/String; = "unnamedSection"

.field private static final serialVersionUID:J = 0x27c557cb07b37546L


# instance fields
.field private _comment:Z

.field private _emptyOption:Z

.field private _emptySection:Z

.field private _escape:Z

.field private _escapeKeyOnly:Z

.field private _escapeNewline:Z

.field private _fileEncoding:Ljava/nio/charset/Charset;

.field private _globalSection:Z

.field private _globalSectionName:Ljava/lang/String;

.field private _headerComment:Z

.field private _include:Z

.field private _lineSeparator:Ljava/lang/String;

.field private _lowerCaseOption:Z

.field private _lowerCaseSection:Z

.field private _multiOption:Z

.field private _multiSection:Z

.field private _pathSeparator:C

.field private _propertyFirstUpper:Z

.field private _strictOperator:Z

.field private _tree:Z

.field private _unnamedSection:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "line.separator"

    const-string v1, "\n"

    .line 66
    invoke-static {v0, v1}, Lorg/ini4j/Config;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/ini4j/Config;->DEFAULT_LINE_SEPARATOR:Ljava/lang/String;

    const-string v0, "UTF-8"

    .line 67
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/ini4j/Config;->DEFAULT_FILE_ENCODING:Ljava/nio/charset/Charset;

    .line 68
    new-instance v0, Lorg/ini4j/Config;

    invoke-direct {v0}, Lorg/ini4j/Config;-><init>()V

    sput-object v0, Lorg/ini4j/Config;->GLOBAL:Lorg/ini4j/Config;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p0}, Lorg/ini4j/Config;->reset()V

    return-void
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 2

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "org.ini4j.config."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/ini4j/Config;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 395
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    :goto_0
    return p2
.end method

.method private getChar(Ljava/lang/String;C)C
    .locals 2

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "org.ini4j.config."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/ini4j/Config;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 402
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    :goto_0
    return p2
.end method

.method private getCharset(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 2

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "org.ini4j.config."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/ini4j/Config;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 409
    :cond_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method public static getEnvironment(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-static {p0, v0}, Lorg/ini4j/Config;->getEnvironment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getEnvironment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 108
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method public static getGlobal()Lorg/ini4j/Config;
    .locals 1

    .line 120
    sget-object v0, Lorg/ini4j/Config;->GLOBAL:Lorg/ini4j/Config;

    return-object v0
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "org.ini4j.config."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/ini4j/Config;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-static {p0, v0}, Lorg/ini4j/Config;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 134
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lorg/ini4j/Config;->clone()Lorg/ini4j/Config;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/ini4j/Config;
    .locals 2

    .line 358
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ini4j/Config;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 362
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public getFileEncoding()Ljava/nio/charset/Charset;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/ini4j/Config;->_fileEncoding:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getGlobalSectionName()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lorg/ini4j/Config;->_globalSectionName:Ljava/lang/String;

    return-object v0
.end method

.method public getLineSeparator()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/ini4j/Config;->_lineSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public getPathSeparator()C
    .locals 1

    .line 301
    iget-char v0, p0, Lorg/ini4j/Config;->_pathSeparator:C

    return v0
.end method

.method public isComment()Z
    .locals 1

    .line 331
    iget-boolean v0, p0, Lorg/ini4j/Config;->_comment:Z

    return v0
.end method

.method public isEmptyOption()Z
    .locals 1

    .line 261
    iget-boolean v0, p0, Lorg/ini4j/Config;->_emptyOption:Z

    return v0
.end method

.method public isEmptySection()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Lorg/ini4j/Config;->_emptySection:Z

    return v0
.end method

.method public isEscape()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lorg/ini4j/Config;->_escape:Z

    return v0
.end method

.method public isEscapeKeyOnly()Z
    .locals 1

    .line 351
    iget-boolean v0, p0, Lorg/ini4j/Config;->_escapeKeyOnly:Z

    return v0
.end method

.method public isEscapeNewline()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lorg/ini4j/Config;->_escapeNewline:Z

    return v0
.end method

.method public isGlobalSection()Z
    .locals 1

    .line 271
    iget-boolean v0, p0, Lorg/ini4j/Config;->_globalSection:Z

    return v0
.end method

.method public isHeaderComment()Z
    .locals 1

    .line 336
    iget-boolean v0, p0, Lorg/ini4j/Config;->_headerComment:Z

    return v0
.end method

.method public isInclude()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Lorg/ini4j/Config;->_include:Z

    return v0
.end method

.method public isLowerCaseOption()Z
    .locals 1

    .line 276
    iget-boolean v0, p0, Lorg/ini4j/Config;->_lowerCaseOption:Z

    return v0
.end method

.method public isLowerCaseSection()Z
    .locals 1

    .line 281
    iget-boolean v0, p0, Lorg/ini4j/Config;->_lowerCaseSection:Z

    return v0
.end method

.method public isMultiOption()Z
    .locals 1

    .line 286
    iget-boolean v0, p0, Lorg/ini4j/Config;->_multiOption:Z

    return v0
.end method

.method public isMultiSection()Z
    .locals 1

    .line 291
    iget-boolean v0, p0, Lorg/ini4j/Config;->_multiSection:Z

    return v0
.end method

.method public isPropertyFirstUpper()Z
    .locals 1

    .line 316
    iget-boolean v0, p0, Lorg/ini4j/Config;->_propertyFirstUpper:Z

    return v0
.end method

.method public isStrictOperator()Z
    .locals 1

    .line 321
    iget-boolean v0, p0, Lorg/ini4j/Config;->_strictOperator:Z

    return v0
.end method

.method public isTree()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lorg/ini4j/Config;->_tree:Z

    return v0
.end method

.method public isUnnamedSection()Z
    .locals 1

    .line 296
    iget-boolean v0, p0, Lorg/ini4j/Config;->_unnamedSection:Z

    return v0
.end method

.method public final reset()V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "emptyOption"

    .line 368
    invoke-direct {p0, v1, v0}, Lorg/ini4j/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/ini4j/Config;->_emptyOption:Z

    const-string v1, "emptySection"

    .line 369
    invoke-direct {p0, v1, v0}, Lorg/ini4j/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/ini4j/Config;->_emptySection:Z

    const-string v1, "globalSection"

    .line 370
    invoke-direct {p0, v1, v0}, Lorg/ini4j/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/ini4j/Config;->_globalSection:Z

    const-string v1, "globalSectionName"

    const-string v2, "?"

    .line 371
    invoke-direct {p0, v1, v2}, Lorg/ini4j/Config;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/ini4j/Config;->_globalSectionName:Ljava/lang/String;

    const-string v1, "include"

    .line 372
    invoke-direct {p0, v1, v0}, Lorg/ini4j/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/ini4j/Config;->_include:Z

    const-string v1, "lowerCaseOption"

    .line 373
    invoke-direct {p0, v1, v0}, Lorg/ini4j/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/ini4j/Config;->_lowerCaseOption:Z

    const-string v1, "lowerCaseSection"

    .line 374
    invoke-direct {p0, v1, v0}, Lorg/ini4j/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/ini4j/Config;->_lowerCaseSection:Z

    const/4 v1, 0x1

    const-string v2, "multiOption"

    .line 375
    invoke-direct {p0, v2, v1}, Lorg/ini4j/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/ini4j/Config;->_multiOption:Z

    const-string v2, "multiSection"

    .line 376
    invoke-direct {p0, v2, v0}, Lorg/ini4j/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/ini4j/Config;->_multiSection:Z

    const-string v2, "strictOperator"

    .line 377
    invoke-direct {p0, v2, v0}, Lorg/ini4j/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/ini4j/Config;->_strictOperator:Z

    const-string v2, "unnamedSection"

    .line 378
    invoke-direct {p0, v2, v0}, Lorg/ini4j/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/ini4j/Config;->_unnamedSection:Z

    const-string v2, "escape"

    .line 379
    invoke-direct {p0, v2, v1}, Lorg/ini4j/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/ini4j/Config;->_escape:Z

    const-string v2, "escapeKey"

    .line 380
    invoke-direct {p0, v2, v0}, Lorg/ini4j/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/ini4j/Config;->_escapeKeyOnly:Z

    const-string v2, "escapeNewline"

    .line 381
    invoke-direct {p0, v2, v1}, Lorg/ini4j/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/ini4j/Config;->_escapeNewline:Z

    const-string v2, "pathSeparator"

    const/16 v3, 0x2f

    .line 382
    invoke-direct {p0, v2, v3}, Lorg/ini4j/Config;->getChar(Ljava/lang/String;C)C

    move-result v2

    iput-char v2, p0, Lorg/ini4j/Config;->_pathSeparator:C

    const-string v2, "tree"

    .line 383
    invoke-direct {p0, v2, v1}, Lorg/ini4j/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/ini4j/Config;->_tree:Z

    const-string v2, "propertyFirstUpper"

    .line 384
    invoke-direct {p0, v2, v0}, Lorg/ini4j/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/ini4j/Config;->_propertyFirstUpper:Z

    .line 385
    sget-object v0, Lorg/ini4j/Config;->DEFAULT_LINE_SEPARATOR:Ljava/lang/String;

    const-string v2, "lineSeparator"

    invoke-direct {p0, v2, v0}, Lorg/ini4j/Config;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ini4j/Config;->_lineSeparator:Ljava/lang/String;

    .line 386
    sget-object v0, Lorg/ini4j/Config;->DEFAULT_FILE_ENCODING:Ljava/nio/charset/Charset;

    const-string v2, "fileEncoding"

    invoke-direct {p0, v2, v0}, Lorg/ini4j/Config;->getCharset(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lorg/ini4j/Config;->_fileEncoding:Ljava/nio/charset/Charset;

    const-string v0, "comment"

    .line 387
    invoke-direct {p0, v0, v1}, Lorg/ini4j/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/ini4j/Config;->_comment:Z

    const-string v0, "headerComment"

    .line 388
    invoke-direct {p0, v0, v1}, Lorg/ini4j/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/ini4j/Config;->_headerComment:Z

    return-void
.end method

.method public setComment(Z)V
    .locals 0

    .line 146
    iput-boolean p1, p0, Lorg/ini4j/Config;->_comment:Z

    return-void
.end method

.method public setEmptyOption(Z)V
    .locals 0

    .line 171
    iput-boolean p1, p0, Lorg/ini4j/Config;->_emptyOption:Z

    return-void
.end method

.method public setEmptySection(Z)V
    .locals 0

    .line 176
    iput-boolean p1, p0, Lorg/ini4j/Config;->_emptySection:Z

    return-void
.end method

.method public setEscape(Z)V
    .locals 0

    .line 181
    iput-boolean p1, p0, Lorg/ini4j/Config;->_escape:Z

    return-void
.end method

.method public setEscapeKeyOnly(Z)V
    .locals 0

    .line 186
    iput-boolean p1, p0, Lorg/ini4j/Config;->_escapeKeyOnly:Z

    return-void
.end method

.method public setEscapeNewline(Z)V
    .locals 0

    .line 191
    iput-boolean p1, p0, Lorg/ini4j/Config;->_escapeNewline:Z

    return-void
.end method

.method public setFileEncoding(Ljava/nio/charset/Charset;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lorg/ini4j/Config;->_fileEncoding:Ljava/nio/charset/Charset;

    return-void
.end method

.method public setGlobalSection(Z)V
    .locals 0

    .line 206
    iput-boolean p1, p0, Lorg/ini4j/Config;->_globalSection:Z

    return-void
.end method

.method public setGlobalSectionName(Ljava/lang/String;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lorg/ini4j/Config;->_globalSectionName:Ljava/lang/String;

    return-void
.end method

.method public setHeaderComment(Z)V
    .locals 0

    .line 221
    iput-boolean p1, p0, Lorg/ini4j/Config;->_headerComment:Z

    return-void
.end method

.method public setInclude(Z)V
    .locals 0

    .line 226
    iput-boolean p1, p0, Lorg/ini4j/Config;->_include:Z

    return-void
.end method

.method public setLineSeparator(Ljava/lang/String;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lorg/ini4j/Config;->_lineSeparator:Ljava/lang/String;

    return-void
.end method

.method public setLowerCaseOption(Z)V
    .locals 0

    .line 241
    iput-boolean p1, p0, Lorg/ini4j/Config;->_lowerCaseOption:Z

    return-void
.end method

.method public setLowerCaseSection(Z)V
    .locals 0

    .line 246
    iput-boolean p1, p0, Lorg/ini4j/Config;->_lowerCaseSection:Z

    return-void
.end method

.method public setMultiOption(Z)V
    .locals 0

    .line 251
    iput-boolean p1, p0, Lorg/ini4j/Config;->_multiOption:Z

    return-void
.end method

.method public setMultiSection(Z)V
    .locals 0

    .line 256
    iput-boolean p1, p0, Lorg/ini4j/Config;->_multiSection:Z

    return-void
.end method

.method public setPathSeparator(C)V
    .locals 0

    .line 306
    iput-char p1, p0, Lorg/ini4j/Config;->_pathSeparator:C

    return-void
.end method

.method public setPropertyFirstUpper(Z)V
    .locals 0

    .line 311
    iput-boolean p1, p0, Lorg/ini4j/Config;->_propertyFirstUpper:Z

    return-void
.end method

.method public setStrictOperator(Z)V
    .locals 0

    .line 326
    iput-boolean p1, p0, Lorg/ini4j/Config;->_strictOperator:Z

    return-void
.end method

.method public setTree(Z)V
    .locals 0

    .line 341
    iput-boolean p1, p0, Lorg/ini4j/Config;->_tree:Z

    return-void
.end method

.method public setUnnamedSection(Z)V
    .locals 0

    .line 346
    iput-boolean p1, p0, Lorg/ini4j/Config;->_unnamedSection:Z

    return-void
.end method
