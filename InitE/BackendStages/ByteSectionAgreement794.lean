import InitE.BackendStages.BytesData794
import InitE.BackendStages.BytePiecesData794
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section794_eq : ByteData.bytes794 = [piece794_0, piece794_1].flatten := by
  rw [piece794_0_eq, piece794_1_eq]
  rfl
#print axioms section794_eq
end InitE.BackendStages.BytePieces
