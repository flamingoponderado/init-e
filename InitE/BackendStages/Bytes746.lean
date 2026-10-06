import InitE.BackendStages.Padded746
import InitE.BackendStages.BytesData746
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes746_eq : (Padded746.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes746 := by
  with_unfolding_all rfl
#print axioms sectionBytes746_eq
end InitE.BackendStages
