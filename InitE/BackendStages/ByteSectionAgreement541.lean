import InitE.BackendStages.BytesData541
import InitE.BackendStages.BytePiecesData541
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section541_eq : ByteData.bytes541 = [piece541_0].flatten := by
  rw [piece541_0_eq]
  rfl
#print axioms section541_eq
end InitE.BackendStages.BytePieces
