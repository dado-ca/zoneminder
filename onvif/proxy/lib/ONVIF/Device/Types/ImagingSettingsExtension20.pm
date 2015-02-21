package ONVIF::Device::Types::ImagingSettingsExtension20;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %ImageStabilization_of :ATTR(:get<ImageStabilization>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        ImageStabilization
        Extension

    ) ],
    {
        'ImageStabilization' => \%ImageStabilization_of,
        'Extension' => \%Extension_of,
    },
    {
        'ImageStabilization' => 'ONVIF::Device::Types::ImageStabilization',
        'Extension' => 'ONVIF::Device::Types::ImagingSettingsExtension202',
    },
    {

        'ImageStabilization' => 'ImageStabilization',
        'Extension' => 'Extension',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Device::Types::ImagingSettingsExtension20

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ImagingSettingsExtension20 from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * ImageStabilization


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Device::Types::ImagingSettingsExtension20
   ImageStabilization =>  { # ONVIF::Device::Types::ImageStabilization
     Mode => $some_value, # ImageStabilizationMode
     Level =>  $some_value, # float
     Extension =>  { # ONVIF::Device::Types::ImageStabilizationExtension
     },
   },
   Extension =>  { # ONVIF::Device::Types::ImagingSettingsExtension202
     IrCutFilterAutoAdjustment =>  { # ONVIF::Device::Types::IrCutFilterAutoAdjustment
       BoundaryType =>  $some_value, # string
       BoundaryOffset =>  $some_value, # float
       ResponseTime =>  $some_value, # duration
       Extension =>  { # ONVIF::Device::Types::IrCutFilterAutoAdjustmentExtension
       },
     },
     Extension =>  { # ONVIF::Device::Types::ImagingSettingsExtension203
     },
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
