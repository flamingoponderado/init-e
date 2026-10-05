import InitE.BackendStages.BytesData97
import InitE.BackendStages.BytePiecesData97
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section97_eq : ByteData.bytes97 = [piece97_0].flatten := by
  rw [piece97_0_eq]
  rfl
#print axioms section97_eq
end InitE.BackendStages.BytePieces
