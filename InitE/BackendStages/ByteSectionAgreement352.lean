import InitE.BackendStages.BytesData352
import InitE.BackendStages.BytePiecesData352
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section352_eq : ByteData.bytes352 = [piece352_0].flatten := by
  rw [piece352_0_eq]
  rfl
#print axioms section352_eq
end InitE.BackendStages.BytePieces
