import InitE.BackendStages.BytesData400
import InitE.BackendStages.BytePiecesData400
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section400_eq : ByteData.bytes400 = [piece400_0].flatten := by
  rw [piece400_0_eq]
  rfl
#print axioms section400_eq
end InitE.BackendStages.BytePieces
