import InitE.BackendStages.Padded732
import InitE.BackendStages.BytesData732
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes732_eq : (Padded732.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes732 := by
  with_unfolding_all rfl
#print axioms sectionBytes732_eq
end InitE.BackendStages
