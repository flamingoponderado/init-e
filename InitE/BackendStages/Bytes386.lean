import InitE.BackendStages.Padded386
import InitE.BackendStages.BytesData386
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes386_eq : (Padded386.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes386 := by
  with_unfolding_all rfl
#print axioms sectionBytes386_eq
end InitE.BackendStages
