import InitE.BackendStages.BytesData638
import InitE.BackendStages.BytePiecesData638
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section638_eq : ByteData.bytes638 = [piece638_0, piece638_1].flatten := by
  rw [piece638_0_eq, piece638_1_eq]
  rfl
#print axioms section638_eq
end InitE.BackendStages.BytePieces
