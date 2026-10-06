import InitE.BackendStages.BytesData89
import InitE.BackendStages.BytePiecesData89
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section89_eq : ByteData.bytes89 = [piece89_0].flatten := by
  rw [piece89_0_eq]
  rfl
#print axioms section89_eq
end InitE.BackendStages.BytePieces
