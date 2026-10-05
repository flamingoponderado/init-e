import Tools.GenSmallStages
import InitE.SmallStages.Oracles863
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 863 InitE.WordStages.source863.2.1 InitE.WordStages.source863.2.2 InitE.SmallStages.Oracles863.oracle863
