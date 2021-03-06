package com.kropotov.asrd.entities.titles;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.kropotov.asrd.entities.common.TitleEntity;
import com.kropotov.asrd.entities.items.Device;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

/*    id        INT(11)      NOT NULL AUTO_INCREMENT,
    title     VARCHAR(50)  NOT NULL,
    path VARCHAR(128) NOT NULL,*/

@Entity
@Table(name = "device_titles")
@Getter
@Setter
@NoArgsConstructor
public class DeviceTitle extends TitleEntity {

    @Column(name = "path")
    private String path;

    @OneToMany(mappedBy = "title", fetch = FetchType.LAZY) // fetch - доставать либо не доставать список со всеми зависимостями при запросе SystemTitleDto
    @JsonBackReference
    private List<Device> devices;

    @ManyToMany(mappedBy = "deviceTitles")
    @JsonIgnore
    private List<SystemTitle> systemTitles;

    @OneToMany(mappedBy = "deviceTitle", fetch = FetchType.LAZY)
    private List<DeviceComponentTitle> componentTitles;
}
