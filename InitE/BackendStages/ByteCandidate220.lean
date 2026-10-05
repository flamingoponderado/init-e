import InitE.BackendStages.BytePiecesData881
import InitE.BackendStages.BytePiecesData882
import InitE.BackendStages.BytePiecesData883
import InitE.BackendStages.BytePiecesData884
import InitE.BackendStages.BytePiecesData885
import InitE.BackendStages.BytePiecesData886
import InitE.BackendStages.BytePiecesData887
import InitE.BackendStages.BytePiecesData888
import InitE.BackendStages.BytePiecesData889
import InitECandidate.Bytes220
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate220_eq : InitECandidate.bytes220 = [piece881_1, piece882_0, piece883_0, piece884_0, piece885_0, piece886_0, piece887_0, piece888_0, piece889_0].flatten := by
  rw [piece881_1_eq, piece882_0_eq, piece883_0_eq, piece884_0_eq, piece885_0_eq, piece886_0_eq, piece887_0_eq, piece888_0_eq, piece889_0_eq]
  rfl
#print axioms candidate220_eq
end InitE.BackendStages.BytePieces
