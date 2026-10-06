import InitE.BackendStages.BytesData866
import InitE.BackendStages.BytePiecesData866
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section866_eq : ByteData.bytes866 = [piece866_0, piece866_1].flatten := by
  rw [piece866_0_eq, piece866_1_eq]
  rfl
#print axioms section866_eq
end InitE.BackendStages.BytePieces
