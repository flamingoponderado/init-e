import Tools.GenSmallStages
import InitE.SmallStages.Oracles673
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 673 InitE.WordStages.source673.2.1 InitE.WordStages.source673.2.2 InitE.SmallStages.Oracles673.oracle673
