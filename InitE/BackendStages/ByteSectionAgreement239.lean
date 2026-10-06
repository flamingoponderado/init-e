import InitE.BackendStages.BytesData239
import InitE.BackendStages.BytePiecesData239
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section239_eq : ByteData.bytes239 = [piece239_0].flatten := by
  rw [piece239_0_eq]
  rfl
#print axioms section239_eq
end InitE.BackendStages.BytePieces
