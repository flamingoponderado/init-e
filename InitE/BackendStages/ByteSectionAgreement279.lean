import InitE.BackendStages.BytesData279
import InitE.BackendStages.BytePiecesData279
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section279_eq : ByteData.bytes279 = [piece279_0].flatten := by
  rw [piece279_0_eq]
  rfl
#print axioms section279_eq
end InitE.BackendStages.BytePieces
