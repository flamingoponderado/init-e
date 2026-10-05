import Tools.GenSmallStages
import InitE.SmallStages.Oracles886
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 886 InitE.WordStages.source886.2.1 InitE.WordStages.source886.2.2 InitE.SmallStages.Oracles886.oracle886
