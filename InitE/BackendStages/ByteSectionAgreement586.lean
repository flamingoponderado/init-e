import InitE.BackendStages.BytesData586
import InitE.BackendStages.BytePiecesData586
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section586_eq : ByteData.bytes586 = [piece586_0, piece586_1].flatten := by
  rw [piece586_0_eq, piece586_1_eq]
  rfl
#print axioms section586_eq
end InitE.BackendStages.BytePieces
