import InitE.BackendStages.BytesData790
import InitE.BackendStages.BytePiecesData790
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section790_eq : ByteData.bytes790 = [piece790_0].flatten := by
  rw [piece790_0_eq]
  rfl
#print axioms section790_eq
end InitE.BackendStages.BytePieces
