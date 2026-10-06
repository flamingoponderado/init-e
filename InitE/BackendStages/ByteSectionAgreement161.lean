import InitE.BackendStages.BytesData161
import InitE.BackendStages.BytePiecesData161
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section161_eq : ByteData.bytes161 = [piece161_0, piece161_1].flatten := by
  rw [piece161_0_eq, piece161_1_eq]
  rfl
#print axioms section161_eq
end InitE.BackendStages.BytePieces
