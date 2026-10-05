import InitE.BackendStages.BytesData295
import InitE.BackendStages.BytePiecesData295
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section295_eq : ByteData.bytes295 = [piece295_0].flatten := by
  rw [piece295_0_eq]
  rfl
#print axioms section295_eq
end InitE.BackendStages.BytePieces
