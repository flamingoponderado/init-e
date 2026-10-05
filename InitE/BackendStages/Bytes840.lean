import InitE.BackendStages.Padded840
import InitE.BackendStages.BytesData840
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes840_eq : (Padded840.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes840 := by
  with_unfolding_all rfl
#print axioms sectionBytes840_eq
end InitE.BackendStages
