import InitE.BackendStages.BytesData763
import InitE.BackendStages.BytePiecesData763
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section763_eq : ByteData.bytes763 = [piece763_0, piece763_1].flatten := by
  rw [piece763_0_eq, piece763_1_eq]
  rfl
#print axioms section763_eq
end InitE.BackendStages.BytePieces
