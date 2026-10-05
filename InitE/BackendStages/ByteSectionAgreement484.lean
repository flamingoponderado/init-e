import InitE.BackendStages.BytesData484
import InitE.BackendStages.BytePiecesData484
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section484_eq : ByteData.bytes484 = [piece484_0, piece484_1].flatten := by
  rw [piece484_0_eq, piece484_1_eq]
  rfl
#print axioms section484_eq
end InitE.BackendStages.BytePieces
