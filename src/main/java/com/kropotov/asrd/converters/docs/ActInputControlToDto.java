package com.kropotov.asrd.converters.docs;

import com.kropotov.asrd.converters.simples.items.ControlSystemToSimple;
import com.kropotov.asrd.converters.simples.items.DeviceToSimple;
import com.kropotov.asrd.dto.docs.ActInputControlDto;
import com.kropotov.asrd.entities.docs.ActInputControl;
import lombok.RequiredArgsConstructor;
import lombok.Synchronized;
import org.springframework.core.convert.converter.Converter;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Component;

import java.time.format.DateTimeFormatter;

@Component
@RequiredArgsConstructor
public class ActInputControlToDto implements Converter<ActInputControl, ActInputControlDto> {
    private final InvoiceToDto invoiceConverter;
    private final DeviceToSimple deviceConverter;
    private final ControlSystemToSimple systemConverter;

    @Synchronized
    @Nullable
    @Override
    public ActInputControlDto convert(ActInputControl source) {
        if (source == null) {
            return null;
        }

        final ActInputControlDto actDto = ActInputControlDto.builder()
                .id(source.getId())
                .path(source.getPath())
                .number(source.getNumber())
                .invoice(invoiceConverter.convert(source.getInvoice()))
                .result(source.getResult())
                .description(source.getDescription())
                .build();
        if (source.getDate() != null) {
            actDto.setDate(source.getDate().format(DateTimeFormatter.ofPattern("dd.MM.yyyy")));
        }

        if (source.getSystems() != null && source.getSystems().size() > 0) {
            source.getSystems()
                    .forEach(system -> actDto.addSystem(systemConverter.convert(system)));
        }

        if (source.getDevices() != null && source.getDevices().size() > 0) {
            source.getDevices()
                    .forEach(device -> actDto.addDevice(deviceConverter.convert(device)));
        }

        return actDto;
    }
}
